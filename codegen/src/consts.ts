export const fieldTypeNameReplacements: {[key:string]:string;} = 
  { "Date" : "JSDate",
    "Element.JSX" : "JSX",
    "ReactElement.React" : "React",
    "StyleProp" : "Styles",
    "ScrollViewProps" : "(Record ScrollViewProps)"
  }

export const ignoreForeignDataList: string[] =
  [ "Array", "Date", "Element.JSX", "JSDate", "JSX", "StyleProp", "Styles", "(Record ScrollViewProps)", "ReactElement.React" ]

export const noChildren: string[] =
  [ "ButtonProps" ]
