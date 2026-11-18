-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName Varchar2(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue Varchar2(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO "Task"
(
	"Id",
	"TargetName",
	"BdaValue"
)
VALUES
(
	:Id,
	:TargetName,
	:BdaValue
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	p."TargetName",
	p."BdaValue"
FROM
	"Task" p

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."BdaValue"
FROM
	"Task" p

