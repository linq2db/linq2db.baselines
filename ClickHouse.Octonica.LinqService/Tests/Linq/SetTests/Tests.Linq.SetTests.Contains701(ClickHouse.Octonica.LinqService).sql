BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
					LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
			WHERE
				a_Parent.ParentID = toInt32(11) AND a_Parent.Value1 = toInt32(11)
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

