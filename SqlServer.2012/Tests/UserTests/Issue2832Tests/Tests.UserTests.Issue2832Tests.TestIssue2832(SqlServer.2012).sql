(239159) SELECT 
	t239159.Id = t239158.Id
FROM [DctSetpointtype(239158)] as t239158 (spt)
		LEFT JOIN (
			[VWellTree(239161)] as t239161 (t2)
				INNER JOIN [DctOu(239163)] as t239163 (tp2) ON ({t239161.ShopId?}? = {t239163.Id})
				LEFT JOIN [UacUsersDatagroup(239166)] as t239166 (cudg) ON ({t239163.Id} = {t239166.DatagroupId} AND {t239166.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239171)] as t239171 (oudg) ON ({t239163.ParentId?}? = {t239171.DatagroupId} AND {t239171.UserId} = 150 AND {t239171.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239191)] as t239191 (d) ON ({t239161.WellId?}? = {t239191.WellId})
		)  ON ({t239191.SetpointtypeId} = {t239158.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239166.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239171.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
