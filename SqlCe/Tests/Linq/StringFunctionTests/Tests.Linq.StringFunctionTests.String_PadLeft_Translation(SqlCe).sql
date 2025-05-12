BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 1 THEN 'test'
		ELSE REPLICATE('.', 0 - (LEN('test.') - 1)) + 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 4 THEN 'test'
		ELSE REPLICATE('.', 3 - (LEN('test.') - 1)) + 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 5 THEN 'test'
		ELSE REPLICATE('.', 4 - (LEN('test.') - 1)) + 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 6 THEN 'test'
		ELSE REPLICATE('.', 5 - (LEN('test.') - 1)) + 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 7 THEN 'test'
		ELSE REPLICATE(' ', 6 - (LEN('test.') - 1)) + 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 7 THEN 'test'
		ELSE REPLICATE(' ', 6 - (LEN('test.') - 1)) + 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') >= 17 THEN 'test'
		ELSE REPLICATE('.', 16 - (LEN('test.') - 1)) + 'test'
	END as [c1]

