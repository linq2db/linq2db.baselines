BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 1 THEN LPAD('test', 0, '.')
		ELSE 'test'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 4 THEN LPAD('test', 3, '.')
		ELSE 'test'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 5 THEN LPAD('test', 4, '.')
		ELSE 'test'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 6 THEN LPAD('test', 5, '.')
		ELSE 'test'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 7 THEN LPAD('test', 6, ' ')
		ELSE 'test'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 7 THEN LPAD('test', 6, ' ')
		ELSE 'test'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') < 17 THEN LPAD('test', 16, '.')
		ELSE 'test'
	END
FROM table(set{1})

