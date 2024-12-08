(99844) SELECT 
	t99844.Id = t99843.Id
FROM [DctSetpointtype(99843)] as t99843 (spt)
		LEFT JOIN (
			[VWellTree(99846)] as t99846 (t2)
				INNER JOIN [DctOu(99848)] as t99848 (tp2) ON ({t99846.ShopId?}? = {t99848.Id})
				LEFT JOIN [UacUsersDatagroup(99851)] as t99851 (cudg) ON ({t99848.Id} = {t99851.DatagroupId} AND {t99851.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99856)] as t99856 (oudg) ON ({t99848.ParentId?}? = {t99856.DatagroupId} AND {t99856.UserId} = 150 AND {t99856.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99876)] as t99876 (d) ON ({t99846.WellId?}? = {t99876.WellId})
		)  ON ({t99876.SetpointtypeId} = {t99843.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99851.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99856.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
