-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "temp_table_2"
		(
			"Value" VarChar(255)     NULL
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.11.Managed Oracle11

INSERT INTO "temp_table_2"
(
	"Value"
)
SELECT
	t1."Value_1"
FROM
	(
		SELECT
			gr.ID
		FROM
			"temp_table_1" gr
		GROUP BY
			gr.ID
	) gr_1
		INNER JOIN (
			SELECT
				c_1."Value" as "Value_1",
				ROW_NUMBER() OVER (PARTITION BY c_1.ID ORDER BY c_1.ID) as "rn",
				c_1.ID
			FROM
				"temp_table_1" c_1
		) t1 ON gr_1.ID = t1.ID AND t1."rn" <= 1

-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

