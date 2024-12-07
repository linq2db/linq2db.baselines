(488515) SELECT 
	t488515.Id = t488514.Id
FROM [DctSetpointtype(488514)] as t488514 (spt)
		LEFT JOIN (
			[VWellTree(488517)] as t488517 (t2)
				INNER JOIN [DctOu(488519)] as t488519 (tp2) ON ({t488517.ShopId?}? = {t488519.Id})
				LEFT JOIN [UacUsersDatagroup(488522)] as t488522 (cudg) ON ({t488519.Id} = {t488522.DatagroupId} AND {t488522.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488527)] as t488527 (oudg) ON ({t488519.ParentId?}? = {t488527.DatagroupId} AND {t488527.UserId} = 150 AND {t488527.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488547)] as t488547 (d) ON ({t488517.WellId?}? = {t488547.WellId})
		)  ON ({t488547.SetpointtypeId} = {t488514.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488522.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t488527.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
