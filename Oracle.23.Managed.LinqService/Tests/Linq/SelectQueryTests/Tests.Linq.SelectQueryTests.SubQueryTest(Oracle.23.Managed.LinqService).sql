BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleClass"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 100

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."Id",
	t_1."Value",
	t2."cond",
	t2."Value1",
	t2."Value2"
FROM
	"SampleClass" t_1
		LEFT JOIN (
			SELECT
				t1."Value1",
				t1."Value2",
				1 as "cond"
			FROM
				(
					SELECT
						CURRENT_TIMESTAMP + t."Value" * INTERVAL '1' DAY as "Value1",
						CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY as "Value2"
					FROM
						"SampleClass" t
					WHERE
						t."Value" = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + 3 * INTERVAL '1' DAY as "Value1",
						CURRENT_TIMESTAMP + 4 * INTERVAL '1' DAY as "Value2"
					FROM SYS.DUAL
				) t1
			FETCH NEXT 1 ROWS ONLY
		) t2 ON 1=1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

