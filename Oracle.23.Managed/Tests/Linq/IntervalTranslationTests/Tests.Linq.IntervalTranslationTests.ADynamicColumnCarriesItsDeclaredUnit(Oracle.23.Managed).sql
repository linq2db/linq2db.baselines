-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Elapsed"
FROM
	"DynamicDurationRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."Elapsed" AS Float) / 60D as "c1"
FROM
	"DynamicDurationRow" r
FETCH NEXT 2 ROWS ONLY

