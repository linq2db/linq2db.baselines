-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 5400
DECLARE @InTicks Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- Oracle.11.Managed Oracle11
WITH CTE_1
(
	"Id",
	"InSeconds",
	"InTicks",
	"UndeclaredSeconds"
)
AS
(
	SELECT
		r."Id",
		r."InSeconds",
		r."InTicks",
		r."UndeclaredSeconds"
	FROM
		"DurationRow" r
)
SELECT
	t2."Id",
	t2."InSeconds",
	t2."InTicks",
	t2."UndeclaredSeconds"
FROM
	(
		SELECT
			t1."Id",
			t1."InSeconds",
			t1."InTicks",
			t1."UndeclaredSeconds"
		FROM
			CTE_1 t1
		ORDER BY
			t1."Id"
	) t2
WHERE
	ROWNUM <= 2
ORDER BY
	t2."Id"

