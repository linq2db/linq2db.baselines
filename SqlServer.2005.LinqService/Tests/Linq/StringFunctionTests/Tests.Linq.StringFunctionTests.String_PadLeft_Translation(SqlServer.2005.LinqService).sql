BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 1 THEN N'test'
		ELSE REPLICATE(N'.', 0 - (LEN(N'test.') - 1)) + N'test'
	END

BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 4 THEN N'test'
		ELSE REPLICATE(N'.', 3 - (LEN(N'test.') - 1)) + N'test'
	END

BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 5 THEN N'test'
		ELSE REPLICATE(N'.', 4 - (LEN(N'test.') - 1)) + N'test'
	END

BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 6 THEN N'test'
		ELSE REPLICATE(N'.', 5 - (LEN(N'test.') - 1)) + N'test'
	END

BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 7 THEN N'test'
		ELSE REPLICATE(N' ', 6 - (LEN(N'test.') - 1)) + N'test'
	END

BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 7 THEN N'test'
		ELSE REPLICATE(N' ', 6 - (LEN(N'test.') - 1)) + N'test'
	END

BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN LEN(N'test.') >= 17 THEN N'test'
		ELSE REPLICATE(N'.', 16 - (LEN(N'test.') - 1)) + N'test'
	END

