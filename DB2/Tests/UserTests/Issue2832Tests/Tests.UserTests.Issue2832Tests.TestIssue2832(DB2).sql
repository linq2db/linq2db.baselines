(185590) SELECT 
	t185590.Id = t185589.Id
FROM [DctSetpointtype(185589)] as t185589 (spt)
		LEFT JOIN (
			[VWellTree(185592)] as t185592 (t2)
				INNER JOIN [DctOu(185594)] as t185594 (tp2) ON ({t185592.ShopId?}? = {t185594.Id})
				LEFT JOIN [UacUsersDatagroup(185597)] as t185597 (cudg) ON ({t185594.Id} = {t185597.DatagroupId} AND {t185597.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185602)] as t185602 (oudg) ON ({t185594.ParentId?}? = {t185602.DatagroupId} AND {t185602.UserId} = 150 AND {t185602.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185622)] as t185622 (d) ON ({t185592.WellId?}? = {t185622.WellId})
		)  ON ({t185622.SetpointtypeId} = {t185589.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185597.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185602.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
