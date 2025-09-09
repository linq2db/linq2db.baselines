BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	a_Details.UserId,
	a_Details.Age
FROM
	UserIssue3128 t1
		LEFT JOIN UserDetailsIssue3128 a_Details ON t1.Id = a_Details.UserId

