-- Oracle.11.Managed Oracle11

CREATE TABLE "temp_table_1"
(
	ID      Int          NOT NULL,
	"Value" VarChar(255)     NULL,

	CONSTRAINT "PK_temp_table_1" PRIMARY KEY (ID)
)

-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "temp_table_1" (ID, "Value") VALUES (1,'Value')
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

CREATE TABLE "temp_table_2"
(
	"Value" VarChar(50) NOT NULL,

	CONSTRAINT "PK_temp_table_2" PRIMARY KEY ("Value")
)

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

-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

