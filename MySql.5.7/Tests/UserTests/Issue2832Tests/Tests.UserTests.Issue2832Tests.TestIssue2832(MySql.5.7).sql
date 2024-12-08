(318363) SELECT 
	t318363.Id = t318362.Id
FROM [DctSetpointtype(318362)] as t318362 (spt)
		LEFT JOIN (
			[VWellTree(318365)] as t318365 (t2)
				INNER JOIN [DctOu(318367)] as t318367 (tp2) ON ({t318365.ShopId?}? = {t318367.Id})
				LEFT JOIN [UacUsersDatagroup(318370)] as t318370 (cudg) ON ({t318367.Id} = {t318370.DatagroupId} AND {t318370.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318375)] as t318375 (oudg) ON ({t318367.ParentId?}? = {t318375.DatagroupId} AND {t318375.UserId} = 150 AND {t318375.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318395)] as t318395 (d) ON ({t318365.WellId?}? = {t318395.WellId})
		)  ON ({t318395.SetpointtypeId} = {t318362.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318370.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318375.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
