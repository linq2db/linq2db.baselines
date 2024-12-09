(168989) SELECT 
	t168989.Id = t168988.Id
FROM [DctSetpointtype(168988)] as t168988 (spt)
		LEFT JOIN (
			(169026) SELECT 
				t169026.SetpointtypeId        = t169021.SetpointtypeId,
				t169026.Permission            = t168996.Permission?,
				t169026.Inheritablepermission = t169001.Inheritablepermission?
			FROM [VWellTree(168991)] as t168991 (t2)
					INNER JOIN [DctOu(168993)] as t168993 (tp2) ON ({t168991.ShopId?}? = {t168993.Id})
					LEFT JOIN [UacUsersDatagroup(168996)] as t168996 (cudg) ON ({t168993.Id} = {t168996.DatagroupId} AND {t168996.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(169001)] as t169001 (oudg) ON ({t168993.ParentId?}? = {t169001.DatagroupId} AND {t169001.UserId} = 150 AND {t169001.Inheritablepermission} > 0)
					INNER JOIN [Deviation(169021)] as t169021 (d) ON ({t168991.WellId?}? = {t169021.WellId})
		) as t169026 (t1) ON ({t169026.SetpointtypeId?} = {t168988.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t169026.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t169026.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
