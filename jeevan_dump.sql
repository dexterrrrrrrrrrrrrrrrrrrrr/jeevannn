PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT UNIQUE NOT NULL,
            password TEXT NOT NULL,
            role TEXT NOT NULL CHECK(role IN ('user', 'doctor', 'sponsor'))
        );
INSERT INTO users VALUES(1,'Dr. Priya','doctor@jeevan.com','f348d5628621f3d8f59c8cabda0f8eb0aa7e0514a90be7571020b1336f26c113','doctor');
INSERT INTO users VALUES(2,'Sponsor Admin','sponsor@jeevan.com','67af54685436e34500375fcb284086a23e02c28c39d49d4ba83dcb5811b29718','sponsor');
INSERT INTO users VALUES(3,'Test User','user@jeevan.com','e606e38b0d8c19b24cf0ee3808183162ea7cd63ff7912dbb22b5e803286b4446','user');
CREATE TABLE appointments (
            id TEXT PRIMARY KEY,
            user_name TEXT NOT NULL,
            doctor_name TEXT NOT NULL,
            date TEXT NOT NULL,
            time TEXT NOT NULL,
            status TEXT NOT NULL DEFAULT 'Pending' CHECK(status IN ('Pending', 'Confirmed'))
        );
INSERT INTO appointments VALUES('5df6ef6f-cbb7-4bd4-8db5-b04abcb527ca','Test Patient','Dr. Priya Sharma','2026-04-20','10:00','Confirmed');
INSERT INTO appointments VALUES('47098ad7-335f-4b86-b52c-b9557979a08b','tvbuhj','Dr. Priya Sharma','2026-04-22','12:10','Confirmed');
INSERT INTO appointments VALUES('1311c1ae-df68-4bf5-991a-10d721909af9','zee','Dr. Priya Sharma','2026-04-30','09:49','Pending');
INSERT INTO appointments VALUES('7d3e6032-8e1a-4782-9b9f-be44fd1042b6','Test User','Dr. Priya Sharma','2025-12-15','10:30','Pending');
INSERT INTO appointments VALUES('970a4553-ab29-4ef8-b0d0-b5ca365d37ed','zeeshan','Dr. Priya Sharma','2026-05-07','10:12','Pending');
INSERT INTO appointments VALUES('08c73a08-2948-4d7b-920b-1b244f3a4a31','sfdghve','Dr. Priya Sharma','2026-03-31','10:55','Pending');
INSERT INTO appointments VALUES('7b6f4dc3-eede-4dc4-ab81-0dba0dd5bf54','ansh','Dr. Priya Sharma','2026-04-13','20:57','Pending');
INSERT INTO appointments VALUES('5f00e37b-61a3-47aa-8b84-a83ad595900f','random','Dr. Priya Sharma','2026-04-20','10:00','Pending');
CREATE TABLE support_requests (
            id TEXT PRIMARY KEY,
            issue TEXT NOT NULL,
            description TEXT NOT NULL,
            title TEXT NOT NULL,
            type TEXT NOT NULL,
            status TEXT NOT NULL DEFAULT 'Pending' CHECK(status IN ('Pending', 'Approved', 'Rejected'))
        );
INSERT INTO support_requests VALUES('5d47cfdd-c2ad-469c-b68d-98228e280d15','Need healthcare support','I need help with healthcare costs for treatment.','Free First Consultation','Consultation','Approved');
INSERT INTO support_requests VALUES('262958ea-7052-4373-a974-37e5dcf19d25','aaaaaaaaaaaaaaaaaaaa','dasfdsg','Free First Consultation','Consultation','Pending');
INSERT INTO support_requests VALUES('86fb7d5f-908c-475c-a66a-48125685d272','anurag','sfgruh','Mental Health Support','Support','Pending');
INSERT INTO sqlite_sequence VALUES('users',3);
COMMIT;
