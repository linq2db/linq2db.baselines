-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue Text(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO "OfTypeTaskBase"
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

-- PostgreSQL.12 PostgreSQL12
SELECT
	p."Id",
	p."TargetName",
	p."BdaValue"
FROM
	"OfTypeTaskBase" p

-- PostgreSQL.12 PostgreSQL12
SELECT
	p."BdaValue"
FROM
	"OfTypeTaskBase" p

