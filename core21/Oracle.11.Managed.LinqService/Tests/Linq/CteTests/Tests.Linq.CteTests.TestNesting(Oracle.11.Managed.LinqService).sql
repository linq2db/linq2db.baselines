BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NestingA
(
	Property1 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NestingB
(
	Property1 VarChar(255)     NULL,
	Property2 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NestingC
(
	Property1 VarChar(255)     NULL,
	Property2 VarChar(255)     NULL,
	Property3 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NestingC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NestingB

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NestingA

