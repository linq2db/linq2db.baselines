(107334) SELECT 
	t107334.Id = t107333.Id
FROM [DctSetpointtype(107333)] as t107333 (spt)
		LEFT JOIN (
			[VWellTree(107336)] as t107336 (t2)
				INNER JOIN [DctOu(107338)] as t107338 (tp2) ON ({t107336.ShopId?}? = {t107338.Id})
				LEFT JOIN [UacUsersDatagroup(107341)] as t107341 (cudg) ON ({t107338.Id} = {t107341.DatagroupId} AND {t107341.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107346)] as t107346 (oudg) ON ({t107338.ParentId?}? = {t107346.DatagroupId} AND {t107346.UserId} = 150 AND {t107346.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107366)] as t107366 (d) ON ({t107336.WellId?}? = {t107366.WellId})
		)  ON ({t107366.SetpointtypeId} = {t107333.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107341.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107346.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
