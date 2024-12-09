(307153) SELECT 
	t307153.Id = t307152.Id
FROM [DctSetpointtype(307152)] as t307152 (spt)
		LEFT JOIN (
			(307189) SELECT 
				t307189.SetpointtypeId = t307185.SetpointtypeId
			FROM [VWellTree(307155)] as t307155 (t2)
					INNER JOIN [DctOu(307157)] as t307157 (tp2) ON ({t307155.ShopId?}? = {t307157.Id})
					LEFT JOIN [UacUsersDatagroup(307160)] as t307160 (cudg) ON ({t307157.Id} = {t307160.DatagroupId} AND {t307160.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307165)] as t307165 (oudg) ON ({t307157.ParentId?}? = {t307165.DatagroupId} AND {t307165.UserId} = 150 AND {t307165.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307185)] as t307185 (d) ON ({t307155.WellId?}? = {t307185.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307160.Permission, t307165.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307189 (t2_1) ON ({t307189.SetpointtypeId?} = {t307152.Id})
