(244428) SELECT 
	t244428.Id = t244427.Id
FROM [DctSetpointtype(244427)] as t244427 (spt)
		LEFT JOIN (
			[VWellTree(244430)] as t244430 (t2)
				INNER JOIN [DctOu(244432)] as t244432 (tp2) ON ({t244430.ShopId?}? = {t244432.Id})
				LEFT JOIN [UacUsersDatagroup(244435)] as t244435 (cudg) ON ({t244432.Id} = {t244435.DatagroupId} AND {t244435.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244440)] as t244440 (oudg) ON ({t244432.ParentId?}? = {t244440.DatagroupId} AND {t244440.UserId} = 150 AND {t244440.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244460)] as t244460 (d) ON ({t244430.WellId?}? = {t244460.WellId})
		)  ON ({t244460.SetpointtypeId} = {t244427.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244435.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t244440.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
