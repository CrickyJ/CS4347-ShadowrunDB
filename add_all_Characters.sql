USE srdb; 
DROP TABLE IF EXISTS USERS; 
CREATE TABLE USERS 
(
	Username	varchar(80) NOT NULL, -- Unique name for each user
	Password	varchar(20) NOT NULL, -- Used to authorize access
	PRIMARY KEY	(Username)
);
DROP TABLE IF EXISTS CHARACTERS;
CREATE TABLE CHARACTERS
(
	Name varchar(80) NOT NULL,
	TotalKarma integer,
	TotalFunds integer,
	FundsSpent int,
	KarmaSpent int,
	Backstory varchar(1000),
	Personality varchar(500),
	Willpower integer,
	Logic integer,
	Intuition integer,
	Charisma integer,
	Edge integer,
	EdgeAvailable integer,
	Essence float,
	PriorityA varchar(1),
	PriorityB varchar(1),
	PriorityC varchar(1),
	PriorityD varchar(1),
	PriorityE varchar(1),
	Username_FK varchar(80),
	Primary Key (Name, Username_FK),
	Foreign Key (Username_FK) References USERS(Username)
);
DROP TABLE IF EXISTS ACCESSES;
CREATE TABLE ACCESSES
(
	AccessingUser_FK varchar(100),
	Character_FK varchar(160),
	PRIMARY KEY (Character_FK, AccessingUser_FK),
	Foreign Key (Character_FK) References CHARACTERS(Name),
	Foreign Key (AccessingUser_FK) References USERS(Username)
);