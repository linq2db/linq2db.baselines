BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_.ParentID,
	p_.Value1
FROM
	Parent p_
WHERE
	p_.ParentID = toInt32(3)

