BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue2434Table
(
	Id        Int          NOT NULL,
	FirstName VarChar(255)     NULL,
	LastName  VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName
FROM
	Issue2434Table t1
ORDER BY
	t1.FirstName || ' ' || t1.LastName

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Issue2434Table

