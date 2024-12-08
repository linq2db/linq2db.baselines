(185650) SELECT 
	t185650.Id = t185649.Id
FROM [DctSetpointtype(185649)] as t185649 (spt)
		LEFT JOIN (
			[VWellTree(185652)] as t185652 (t2)
				INNER JOIN [DctOu(185654)] as t185654 (tp2) ON ({t185652.ShopId?}? = {t185654.Id})
				LEFT JOIN [UacUsersDatagroup(185657)] as t185657 (cudg) ON ({t185654.Id} = {t185657.DatagroupId} AND {t185657.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185662)] as t185662 (oudg) ON ({t185654.ParentId?}? = {t185662.DatagroupId} AND {t185662.UserId} = 150 AND {t185662.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185682)] as t185682 (d) ON ({t185652.WellId?}? = {t185682.WellId})
		)  ON ({t185682.SetpointtypeId} = {t185649.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185657.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185662.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
