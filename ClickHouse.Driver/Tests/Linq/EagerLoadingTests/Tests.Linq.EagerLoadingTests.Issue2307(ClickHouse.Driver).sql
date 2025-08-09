BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.AttendanceSheetId
FROM
	AttendanceSheet m_1
		INNER JOIN AttendanceSheetRow d ON m_1.Id = d.AttendanceSheetId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id
FROM
	AttendanceSheet t1

