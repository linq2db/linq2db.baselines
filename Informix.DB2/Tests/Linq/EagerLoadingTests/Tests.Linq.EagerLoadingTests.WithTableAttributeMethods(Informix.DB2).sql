BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserIssue3128

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UserIssue3128
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UserDetailsIssue3128
(
	UserId Int NOT NULL,
	Age    Int NOT NULL,

	PRIMARY KEY (UserId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO UserIssue3128
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 10
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18

INSERT INTO UserDetailsIssue3128
(
	UserId,
	Age
)
VALUES
(
	@UserId,
	@Age
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			UserIssue3128 t1
	) > 0

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserIssue3128

