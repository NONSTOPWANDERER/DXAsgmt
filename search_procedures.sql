
-- Stored Procedures for Search Functionality

DELIMITER $$

-- Procedure to search resources by keyword in title or description
CREATE PROCEDURE SearchResourcesByKeyword(IN keyword VARCHAR(255))
BEGIN
    SELECT * FROM resources
    WHERE title LIKE CONCAT('%', keyword, '%')
       OR description LIKE CONCAT('%', keyword, '%');
END $$

-- Procedure to search resources by tag name
CREATE PROCEDURE SearchResourcesByTag(IN tagName VARCHAR(50))
BEGIN
    SELECT r.* FROM resources r
    JOIN resource_tag_link rtl ON r.id = rtl.resource_id
    JOIN tags t ON rtl.tag_id = t.id
    WHERE t.name = tagName;
END $$

-- Procedure to search resources by both keyword and tag name
CREATE PROCEDURE SearchResourcesByKeywordAndTag(IN keyword VARCHAR(255), IN tagName VARCHAR(50))
BEGIN
    SELECT DISTINCT r.* FROM resources r
    JOIN resource_tag_link rtl ON r.id = rtl.resource_id
    JOIN tags t ON rtl.tag_id = t.id
    WHERE (r.title LIKE CONCAT('%', keyword, '%')
           OR r.description LIKE CONCAT('%', keyword, '%'))
      AND t.name = tagName;
END $$

DELIMITER ;
-- Example for Procedures:
-- CALL SearchResourcesByKeyword('meditation');
-- CALL SearchResourcesByTag('Anxiety');
-- CALL SearchResourcesByKeywordAndTag('sleep', 'Sleep');