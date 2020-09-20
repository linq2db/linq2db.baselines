BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%'

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @name Varchar2(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Int32
SET     @idx = 4

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert16',
	Cast((Length(:name) + :idx) as VarChar2(11)),
	'M'
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%'

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%'

