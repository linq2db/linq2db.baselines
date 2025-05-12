BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 1 THEN 'test'
		ELSE LPAD('test', 0, '.')
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 4 THEN 'test'
		ELSE LPAD('test', 3, '.')
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 5 THEN 'test'
		ELSE LPAD('test', 4, '.')
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 6 THEN 'test'
		ELSE LPAD('test', 5, '.')
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 7 THEN 'test'
		ELSE LPAD('test', 6, ' ')
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 7 THEN 'test'
		ELSE LPAD('test', 6, ' ')
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH('test.') >= 17 THEN 'test'
		ELSE LPAD('test', 16, '.')
	END
FROM table(set{1})

