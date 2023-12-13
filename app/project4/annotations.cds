using CatalogService as service from '../../srv/cat-service';

@odata.draft.enabled
annotate service.Books with @(
    UI.HeaderInfo:{
        $Type : 'UI.HeaderInfoType',
        TypeName:'Book',
        TypeNamePlural:'Books',
        Description:{
            $Type : 'UI.DataField',
            Value:description

        },
        Title:{
            $Type:'UI.DataField',
            Value:title
        }
    },
    UI.SelectionFields: [ Id ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Id',
            Value : Id,
        },
        {
            $Type : 'UI.DataField',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
        },
    ],
    UI.Identification: [ 
			{Value: Id},
			{Value: title },
			{Value: stock },
    ],
    UI.Facets:[
        {
            $Type:'UI.ReferenceFacet',
            Target:'@UI.FieldGroup#bookInformatation',
            Label:'Book',
            ID:'bookFacet'
        },
        {
            $Type:'UI.ReferenceFacet',
            Target:'@UI.FieldGroup#authorInformatation',
            Label:'Author',
            ID:'authorFacet'
        }
    ],
    UI.FieldGroup #bookInformatation:{
        $Type:'UI.FieldGroupType',
        Data:[
            {
                Value:Id,
                Label:'ID'
            },
            {
                Value:title,
                Label:'Title'
            },
            {
                Value:description,
                Label:'Description'
            },
            {
                Value:stock,
                Label:'Stock'
            }
        ]
    },
    UI.FieldGroup #authorInformatation:{
        $Type:'UI.FieldGroupType',
        Data:[
            {
                Value:authorId,
                Label:'ID'
            },
            {
                Value:author,
                Label:'Name'
            },
        ]
    }


);


