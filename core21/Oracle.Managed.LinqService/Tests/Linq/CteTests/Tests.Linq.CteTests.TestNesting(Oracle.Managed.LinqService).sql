BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE NestingA
(
	Property1 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE NestingB
(
	Property1 VarChar(255)     NULL,
	Property2 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE NestingC
(
	Property1 VarChar(255)     NULL,
	Property2 VarChar(255)     NULL,
	Property3 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

WITH CTE_1 (Property2)
AS
(
	SELECT
		a.Property2
	FROM
		NestingC a
)
SELECT
	c2.Property1,
	t_1.Property2,
	t_1.Property3
FROM
	(
		SELECT
			c1.Property2 as Property1
		FROM
			CTE_1 c1,
			NestingC t
	) c2,
	NestingC t_1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE NestingC

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE NestingB

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE NestingA

