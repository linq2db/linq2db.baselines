BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CreateTableTypes
(
	String VarChar(255) NOT NULL,
	Id     Int          NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @String Varchar2(1) -- String
SET     @String = ' '

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	:Id,
	:String
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @String Varchar2(14) -- String
SET     @String = 'test max value'

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	:Id,
	:String
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.Id, 
	t1.String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CreateTableTypes

