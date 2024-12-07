(140073) SELECT 
	t140073.Id = t140072.Id
FROM [DctSetpointtype(140072)] as t140072 (spt)
		LEFT JOIN (
			[VWellTree(140075)] as t140075 (t2)
				INNER JOIN [DctOu(140077)] as t140077 (tp2) ON ({t140075.ShopId?}? = {t140077.Id})
				LEFT JOIN [UacUsersDatagroup(140080)] as t140080 (cudg) ON ({t140077.Id} = {t140080.DatagroupId} AND {t140080.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140085)] as t140085 (oudg) ON ({t140077.ParentId?}? = {t140085.DatagroupId} AND {t140085.UserId} = 150 AND {t140085.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140105)] as t140105 (d) ON ({t140075.WellId?}? = {t140105.WellId})
		)  ON ({t140105.SetpointtypeId} = {t140072.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140080.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140085.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
