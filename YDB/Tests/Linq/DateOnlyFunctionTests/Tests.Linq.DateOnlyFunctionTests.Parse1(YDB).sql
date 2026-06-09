-- YDB Ydb

SELECT
	Unwrap(CAST('2010-01-'u || CAST(String::LeftPad(CAST(t.TransactionId AS String), 2, '0') AS Utf8) AS Date)) as d
FROM
	Transactions t
WHERE
	DateTime::GetDayOfMonth(Unwrap(CAST('2010-01-'u || CAST(String::LeftPad(CAST(t.TransactionId AS String), 2, '0') AS Utf8) AS Date))) > 0

-- YDB Ydb

SELECT
	t1.TransactionId as TransactionId,
	t1.TransactionDate as TransactionDate
FROM
	Transactions t1

