(239016) SELECT 
	t239016.Id = t239015.Id
FROM [DctSetpointtype(239015)] as t239015 (spt)
		LEFT JOIN (
			[VWellTree(239018)] as t239018 (t2)
				INNER JOIN [DctOu(239020)] as t239020 (tp2) ON ({t239018.ShopId?}? = {t239020.Id})
				LEFT JOIN [UacUsersDatagroup(239023)] as t239023 (cudg) ON ({t239020.Id} = {t239023.DatagroupId} AND {t239023.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239028)] as t239028 (oudg) ON ({t239020.ParentId?}? = {t239028.DatagroupId} AND {t239028.UserId} = 150 AND {t239028.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239048)] as t239048 (d) ON ({t239018.WellId?}? = {t239048.WellId})
		)  ON ({t239048.SetpointtypeId} = {t239015.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239023.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239028.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
