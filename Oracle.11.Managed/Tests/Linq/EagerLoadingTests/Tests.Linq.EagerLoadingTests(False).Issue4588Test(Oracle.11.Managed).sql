-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1."SubOrderId",
	d_1."Code",
	d_1."Date",
	d_1."IsActive"
FROM
	(
		SELECT DISTINCT
			d."Id",
			t4."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					t3."Id"
				FROM
					(
						SELECT
							t2."Id"
						FROM
							(
								SELECT
									t1."Id",
									ROWNUM as RN
								FROM
									(
										SELECT
											x."Id"
										FROM
											"Order" x
										WHERE
											x."Name" LIKE 'cat%' ESCAPE '~'
										ORDER BY
											x."Id"
									) t1
								WHERE
									ROWNUM <= (:skip + :take)
							) t2
						WHERE
							t2.RN > :skip
					) t3
			) t4
				INNER JOIN "SubOrder" d ON t4."Id" = d."OrderId"
	) m_1
		INNER JOIN "SubOrderDetail" d_1 ON m_1."Id" = d_1."SubOrderId"

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	m_1."Id",
	d."Id",
	d."OrderId"
FROM
	(
		SELECT DISTINCT
			t3."Id"
		FROM
			(
				SELECT
					t2."Id"
				FROM
					(
						SELECT
							t1."Id",
							ROWNUM as RN
						FROM
							(
								SELECT
									x."Id"
								FROM
									"Order" x
								WHERE
									x."Name" LIKE 'cat%' ESCAPE '~'
								ORDER BY
									x."Id"
							) t1
						WHERE
							ROWNUM <= (:skip + :take)
					) t2
				WHERE
					t2.RN > :skip
			) t3
	) m_1
		INNER JOIN "SubOrder" d ON m_1."Id" = d."OrderId"

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	t2."Id",
	t2."Name"
FROM
	(
		SELECT
			t1."Id",
			t1."Name",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."Id",
					x."Name"
				FROM
					"Order" x
				WHERE
					x."Name" LIKE 'cat%' ESCAPE '~'
				ORDER BY
					x."Id"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2."Id"

