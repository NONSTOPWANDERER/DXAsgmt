
-- Sample Data for Mental Health Check-In App

-- Insert sample users
INSERT INTO users (username, email, password)
VALUES ('johndoe', 'john@example.com', 'hashedpassword123');

-- Insert scales
INSERT INTO scales (name, min_value, max_value)
VALUES ('Mood', 1, 10), ('Stress', 1, 10);

-- Insert a sample check-in
INSERT INTO check_ins (user_id, check_in_date, mood_rating, stress_rating, notes)
VALUES (1, CURDATE(), 6, 8, 'Feeling a bit stressed today due to workload.');

-- Insert sample resources
INSERT INTO resources (title, type, url, description)
VALUES ('Mindfulness Meditation', 'video', 'https://example.com/mindfulness', 'A short guided meditation.');

-- Insert resource categories and linking
INSERT INTO resource_categories (name) VALUES ('Meditation');
INSERT INTO resource_category_link (resource_id, category_id) VALUES (1, 1);

-- Insert resource recommendation
INSERT INTO resource_recommendations (scale_type, min_rating, max_rating, resource_id)
VALUES ('stress', 7, 10, 1);

-- Insert engagement tracking
INSERT INTO resource_engagement (user_id, resource_id)
VALUES (1, 1);

-- Insert reminder
INSERT INTO reminders (user_id, reminder_time, days_of_week)
VALUES (1, '08:00:00', 'Mon,Tue,Wed,Thu,Fri');

-- Insert tags
INSERT INTO tags (name) VALUES ('Anxiety'), ('Sleep'), ('Breathing');

-- Insert tag associations
INSERT INTO resource_tag_link (resource_id, tag_id) VALUES 
(1, 1), -- Resource 1 -> Anxiety
(1, 3); -- Resource 1 -> Breathing

-- Insert admin
INSERT INTO admins (user_id, role) VALUES (1, 'superadmin');
