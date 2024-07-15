BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						t6.COUNT_1,
						t6.COUNT_1_1
					FROM
						(
							SELECT
								(
									SELECT
										COUNT(*)
									FROM
										Patient t2
									WHERE
										t2.PersonID = 0 AND NOT EXISTS(
											SELECT
												*
											FROM
												Patient t3
											WHERE
												t3.PersonID = 2 AND t2.PersonID = t3.PersonID
										)
								) as COUNT_1,
								(
									SELECT
										COUNT(*)
									FROM
										Patient t4
									WHERE
										t4.PersonID = 2 AND NOT EXISTS(
											SELECT
												*
											FROM
												Patient t5
											WHERE
												t5.PersonID = 0 AND t4.PersonID = t5.PersonID
										)
								) as COUNT_1_1
							FROM
								Person t1
						) t6
				) t7
			WHERE
				t7.COUNT_1 = 0 AND t7.COUNT_1_1 = 0
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

