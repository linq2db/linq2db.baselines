BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 1 THEN REPLICATE('.', 0 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 4 THEN REPLICATE('.', 3 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 5 THEN REPLICATE('.', 4 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 6 THEN REPLICATE('.', 5 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 7 THEN REPLICATE(' ', 6 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 7 THEN REPLICATE(' ', 6 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN LEN('test.') < 17 THEN REPLICATE('.', 16 - (LEN('test.') - 1)) + 'test'
		ELSE 'test'
	END as [c1]

