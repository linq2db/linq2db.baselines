BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.Id,
	d.Id,
	d.AttendanceSheetId
FROM
	AttendanceSheet m_1
		INNER JOIN AttendanceSheetRow d ON m_1.Id = d.AttendanceSheetId

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id
FROM
	AttendanceSheet t1

