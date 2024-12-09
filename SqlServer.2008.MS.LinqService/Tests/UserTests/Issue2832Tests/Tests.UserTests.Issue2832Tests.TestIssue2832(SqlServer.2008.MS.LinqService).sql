(239059) SELECT 
	t239059.Id = t239058.Id
FROM [DctSetpointtype(239058)] as t239058 (spt)
		LEFT JOIN (
			[VWellTree(239061)] as t239061 (t2)
				INNER JOIN [DctOu(239063)] as t239063 (tp2) ON ({t239061.ShopId?}? = {t239063.Id})
				LEFT JOIN [UacUsersDatagroup(239066)] as t239066 (cudg) ON ({t239063.Id} = {t239066.DatagroupId} AND {t239066.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239071)] as t239071 (oudg) ON ({t239063.ParentId?}? = {t239071.DatagroupId} AND {t239071.UserId} = 150 AND {t239071.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239091)] as t239091 (d) ON ({t239061.WellId?}? = {t239091.WellId})
		)  ON ({t239091.SetpointtypeId} = {t239058.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239066.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239071.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
