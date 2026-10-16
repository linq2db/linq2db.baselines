-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue Text(9) -- String
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."Id",
	p."TargetName",
	p."BdaValue"
FROM
	"Task" p

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."BdaValue"
FROM
	"Task" p

