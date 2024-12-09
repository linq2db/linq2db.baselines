(219306) SELECT 
	t219306.Id = t219305.Id
FROM [DctSetpointtype(219305)] as t219305 (spt)
		LEFT JOIN (
			[VWellTree(219308)] as t219308 (t2)
				INNER JOIN [DctOu(219310)] as t219310 (tp2) ON ({t219308.ShopId?}? = {t219310.Id})
				LEFT JOIN [UacUsersDatagroup(219313)] as t219313 (cudg) ON ({t219310.Id} = {t219313.DatagroupId} AND {t219313.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(219318)] as t219318 (oudg) ON ({t219310.ParentId?}? = {t219318.DatagroupId} AND {t219318.UserId} = 150 AND {t219318.Inheritablepermission} > 0)
				INNER JOIN [Deviation(219338)] as t219338 (d) ON ({t219308.WellId?}? = {t219338.WellId})
		)  ON ({t219338.SetpointtypeId} = {t219305.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t219313.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t219318.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
