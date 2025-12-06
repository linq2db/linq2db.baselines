-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE TABLE "temp_table_1"
(
	ID      Int          NOT NULL,
	"Value" VarChar(255)     NULL,

	CONSTRAINT "PK_temp_table_1" PRIMARY KEY (ID)
)

-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "temp_table_1" (ID, "Value") VALUES (1,'Value')
SELECT * FROM dual

-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE TABLE "temp_table_2"
(
	"Value" VarChar(50) NOT NULL,

	CONSTRAINT "PK_temp_table_2" PRIMARY KEY ("Value")
)

-- Oracle.23.Managed Oracle.Managed Oracle12

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
		CROSS APPLY (
			SELECT
				c_1."Value" as "Value_1"
			FROM
				"temp_table_1" c_1
			WHERE
				gr_1.ID = c_1.ID AND ROWNUM <= 1
		) t1

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

