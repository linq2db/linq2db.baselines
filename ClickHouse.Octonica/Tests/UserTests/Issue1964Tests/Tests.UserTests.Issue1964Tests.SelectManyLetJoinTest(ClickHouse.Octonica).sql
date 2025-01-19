BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.BranchAddress,
	m_1.BranchId,
	m_1.BranchName,
	m_1.BusinessHours,
	m_1.PointX,
	m_1.PointY,
	att.BranchPic
FROM
	BranchInfo m_1
		LEFT JOIN (
			SELECT
				ROW_NUMBER() OVER(PARTITION BY temp_1.ItemId ORDER BY temp_1.CreateTime) as Index_1,
				temp_1.ItemId as ItemId,
				temp_1.Url as BranchPic
			FROM
				Attachment temp_1
			WHERE
				temp_1.Status = 0 AND temp_1.Type = 2
		) att ON att.ItemId = m_1.BranchId AND att.Index_1 = toInt64(1)
WHERE
	m_1.Status = 0 AND m_1.BranchIsShow = 0

