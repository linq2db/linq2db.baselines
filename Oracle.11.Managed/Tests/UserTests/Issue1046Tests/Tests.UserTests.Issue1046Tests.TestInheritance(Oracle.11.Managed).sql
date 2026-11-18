-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	p."Id",
	p."TargetName",
	p."BdaValue"
FROM
	"Task" p

-- Oracle.11.Managed Oracle11
SELECT
	p."BdaValue"
FROM
	"Task" p

