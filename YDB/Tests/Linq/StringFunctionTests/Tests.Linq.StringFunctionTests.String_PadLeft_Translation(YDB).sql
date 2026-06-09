-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 0, '.'u) AS Text)) as c1

-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 3, '.'u) AS Text)) as c1

-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 4, '.'u) AS Text)) as c1

-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 5, '.'u) AS Text)) as c1

-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 6, ' 'u) AS Text)) as c1

-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 6) AS Text)) as c1

-- YDB Ydb

SELECT
	Unwrap(CAST(String::LeftPad('test'u, 16, '.'u) AS Text)) as c1

