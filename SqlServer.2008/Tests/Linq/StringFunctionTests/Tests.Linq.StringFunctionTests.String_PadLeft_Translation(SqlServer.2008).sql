BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 1 THEN REPLICATE(N'.', 0 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 4 THEN REPLICATE(N'.', 3 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 5 THEN REPLICATE(N'.', 4 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 6 THEN REPLICATE(N'.', 5 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 7 THEN REPLICATE(N' ', 6 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 7 THEN REPLICATE(N' ', 6 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN LEN(N'test.') < 17 THEN REPLICATE(N'.', 16 - (LEN(N'test.') - 1)) + N'test'
		ELSE N'test'
	END

