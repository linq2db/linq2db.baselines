BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE O1
(
	DocEntry    Int           NOT NULL,
	BplId       Int           NOT NULL,
	ChaveAcesso NVarChar(255)     NULL,
	DocStatus   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE O2
(
	DocEntry    Int           NOT NULL,
	BplId       Int           NOT NULL,
	ChaveAcesso NVarChar(255)     NULL,
	DocStatus   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE O3
(
	DocEntry    Int           NOT NULL,
	BplId       Int           NOT NULL,
	ChaveAcesso NVarChar(255)     NULL,
	DocStatus   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t3.NumeroInterno, 
	t3.StatusValor, 
	t3.DescricaoStatus
FROM
	( 
		SELECT 
			t1.NumeroInterno, 
			t1.StatusValor, 
			t1.DescricaoStatus
		FROM
			( 
				SELECT 
					doSap.DocEntry as NumeroInterno, 
					CASE
						WHEN doSap.DocStatus = 'O'
							THEN 'Aberto'
						ELSE 'Fechado'
					END as StatusValor, 
					'Manual/Externo' as DescricaoStatus
				FROM
					O1 doSap
			) t1
		UNION
		SELECT 
			t2.NumeroInterno, 
			t2.StatusValor, 
			t2.DescricaoStatus
		FROM
			( 
				SELECT 
					doSap_1.DocEntry as NumeroInterno, 
					CASE
						WHEN doSap_1.DocStatus = 'O'
							THEN 'Aberto'
						ELSE 'Fechado'
					END as StatusValor, 
					'Manual/Externo' as DescricaoStatus
				FROM
					O2 doSap_1
			) t2
	) t3
UNION
SELECT 
	t4.NumeroInterno, 
	t4.StatusValor, 
	t4.DescricaoStatus
FROM
	( 
		SELECT 
			doSap_2.DocEntry as NumeroInterno, 
			CASE
				WHEN doSap_2.DocStatus = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as StatusValor, 
			'Manual/Externo' as DescricaoStatus
		FROM
			O3 doSap_2
	) t4

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE O3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE O2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE O1

