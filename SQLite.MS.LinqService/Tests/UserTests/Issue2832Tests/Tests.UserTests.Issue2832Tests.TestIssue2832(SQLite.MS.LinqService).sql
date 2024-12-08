(701059) SELECT 
	t701059.Id = t701058.Id
FROM [DctSetpointtype(701058)] as t701058 (spt)
		LEFT JOIN (
			[VWellTree(701061)] as t701061 (t2)
				INNER JOIN [DctOu(701063)] as t701063 (tp2) ON ({t701061.ShopId?}? = {t701063.Id})
				LEFT JOIN [UacUsersDatagroup(701066)] as t701066 (cudg) ON ({t701063.Id} = {t701066.DatagroupId} AND {t701066.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701071)] as t701071 (oudg) ON ({t701063.ParentId?}? = {t701071.DatagroupId} AND {t701071.UserId} = 150 AND {t701071.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701091)] as t701091 (d) ON ({t701061.WellId?}? = {t701091.WellId})
		)  ON ({t701091.SetpointtypeId} = {t701058.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701066.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701071.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
