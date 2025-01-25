BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1".ID,
	"d".ID,
	"d".ID3
FROM
	(
		SELECT DISTINCT
			"a_Table3".ID
		FROM
			"Table1" "r"
				LEFT JOIN "Table2" "a_Table2" ON "r".ID2 = "a_Table2".ID
				LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Table4" "id"
				WHERE
					"a_Table3".ID = "id".ID3 AND "id".ID = "r".ID
			)
	) "m_1"
		INNER JOIN "Table4" "d" ON "m_1".ID = "d".ID3 OR "m_1".ID IS NULL AND "d".ID3 IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"r".ID,
	"r".ID2,
	"a_Table2".ID,
	"a_Table2".ID3,
	"a_Table3".ID
FROM
	"Table1" "r"
		LEFT JOIN "Table2" "a_Table2" ON "r".ID2 = "a_Table2".ID
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table4" "id"
		WHERE
			"a_Table3".ID = "id".ID3 AND "id".ID = "r".ID
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."cond",
	"d".ID,
	"d".ID3
FROM
	(
		SELECT DISTINCT
			"a_Table3".ID as "cond"
		FROM
			"Table1" "t1"
				LEFT JOIN "Table2" "a_Table2" ON "t1".ID2 = "a_Table2".ID
				LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID
	) "m_1"
		INNER JOIN "Table4" "d" ON "m_1"."cond" = "d".ID3 OR "m_1"."cond" IS NULL AND "d".ID3 IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1".ID2,
	"a_Table2".ID,
	"a_Table2".ID3,
	"a_Table3".ID
FROM
	"Table1" "t1"
		LEFT JOIN "Table2" "a_Table2" ON "t1".ID2 = "a_Table2".ID
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID

