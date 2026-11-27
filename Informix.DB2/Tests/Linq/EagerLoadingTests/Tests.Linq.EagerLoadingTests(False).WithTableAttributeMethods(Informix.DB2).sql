-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO LoadAsTableUser
(
	Id
)
VALUES
(
	@Id
)

-- Informix.DB2 Informix
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 10
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18

INSERT INTO LoadAsTableUserDetails
(
	UserId,
	Age
)
VALUES
(
	@UserId,
	@Age
)

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
			LoadAsTableUser t1
	) > 0

