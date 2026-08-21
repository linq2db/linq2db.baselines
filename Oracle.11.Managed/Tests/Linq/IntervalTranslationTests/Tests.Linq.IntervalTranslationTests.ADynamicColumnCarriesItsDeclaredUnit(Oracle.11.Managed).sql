-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Elapsed Int64
SET     @Elapsed = 5400

INSERT INTO "DynamicDurationRow"
(
	"Id",
	"Elapsed"
)
VALUES
(
	:Id,
	:Elapsed
)

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Elapsed"
FROM
	"DynamicDurationRow" t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST(r."Elapsed" AS Float) / 60D
FROM
	"DynamicDurationRow" r
WHERE
	ROWNUM <= 2

