-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t7."Key_1",
	t7.COUNT_1,
	t7.COUNT_2,
	t7.COUNT_3,
	t7.COUNT_4,
	t1.COUNT_1,
	t3.COUNT_1,
	t4.COUNT_1,
	t7.COUNT_5,
	t6.COUNT_1
FROM
	(
		SELECT
			t."GroupId" as "Key_1",
			COUNT(*) as COUNT_1,
			COUNT(CASE
				WHEN MOD(t."DataValue", 2) = 0D THEN 1
				ELSE NULL
			END) as COUNT_2,
			COUNT(*) as COUNT_3,
			COUNT(DISTINCT t."DataValue") as COUNT_4,
			COUNT(CASE
				WHEN MOD(t."DataValue", 2) = 0D THEN 1
				ELSE NULL
			END) as COUNT_5
		FROM
			"AggregationData" t
		WHERE
			t."DataValue" IS NOT NULL
		GROUP BY
			t."GroupId"
	) t7
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						x."DataValue"
					FROM
						"AggregationData" x
					WHERE
						x."DataValue" IS NOT NULL AND t7."Key_1" = x."GroupId"
				) x_1
			WHERE
				MOD(x_1."DataValue", 2) = 0D
		) t1
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						t_1."DataValue"
					FROM
						"AggregationData" t_1
					WHERE
						t_1."DataValue" IS NOT NULL AND t7."Key_1" = t_1."GroupId" AND
						MOD(t_1."DataValue", 2) = 0D
				) t2
		) t3
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						x_2."DataValue"
					FROM
						"AggregationData" x_2
					WHERE
						x_2."DataValue" IS NOT NULL AND t7."Key_1" = x_2."GroupId" AND
						MOD(x_2."DataValue", 2) = 0D
				) x_3
			WHERE
				MOD(x_3."DataValue", 2) = 0D
		) t4
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						t_2."DataValue"
					FROM
						"AggregationData" t_2
					WHERE
						t_2."DataValue" IS NOT NULL AND t7."Key_1" = t_2."GroupId" AND
						MOD(t_2."DataValue", 2) = 0D
				) t5
		) t6

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

