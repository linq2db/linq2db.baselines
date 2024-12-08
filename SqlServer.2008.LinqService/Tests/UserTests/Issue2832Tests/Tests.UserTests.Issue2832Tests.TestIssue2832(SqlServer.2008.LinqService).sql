(238862) SELECT 
	t238862.Id = t238861.Id
FROM [DctSetpointtype(238861)] as t238861 (spt)
		LEFT JOIN (
			[VWellTree(238864)] as t238864 (t2)
				INNER JOIN [DctOu(238866)] as t238866 (tp2) ON ({t238864.ShopId?}? = {t238866.Id})
				LEFT JOIN [UacUsersDatagroup(238869)] as t238869 (cudg) ON ({t238866.Id} = {t238869.DatagroupId} AND {t238869.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238874)] as t238874 (oudg) ON ({t238866.ParentId?}? = {t238874.DatagroupId} AND {t238874.UserId} = 150 AND {t238874.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238894)] as t238894 (d) ON ({t238864.WellId?}? = {t238894.WellId})
		)  ON ({t238894.SetpointtypeId} = {t238861.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238869.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t238874.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
