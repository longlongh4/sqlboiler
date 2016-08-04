{{- $tableNameSingular := .Table.Name | singular | titleCase -}}
{{- $varNameSingular := .Table.Name | singular | camelCase -}}
var {{$varNameSingular}}BeforeCreateHooks []{{$tableNameSingular}}Hook
var {{$varNameSingular}}BeforeUpdateHooks []{{$tableNameSingular}}Hook
var {{$varNameSingular}}BeforeUpsertHooks []{{$tableNameSingular}}Hook
var {{$varNameSingular}}AfterCreateHooks []{{$tableNameSingular}}Hook
var {{$varNameSingular}}AfterUpdateHooks []{{$tableNameSingular}}Hook
var {{$varNameSingular}}AfterUpsertHooks []{{$tableNameSingular}}Hook

// doBeforeCreateHooks executes all "before create" hooks.
func (o *{{$tableNameSingular}}) doBeforeCreateHooks() (err error) {
  for _, hook := range {{$varNameSingular}}BeforeCreateHooks {
    if err := hook(o); err != nil {
      return err
    }
  }

  return nil
}

// doBeforeUpdateHooks executes all "before Update" hooks.
func (o *{{$tableNameSingular}}) doBeforeUpdateHooks() (err error) {
  for _, hook := range {{$varNameSingular}}BeforeUpdateHooks {
    if err := hook(o); err != nil {
      return err
    }
  }

  return nil
}

// doBeforeUpsertHooks executes all "before Upsert" hooks.
func (o *{{$tableNameSingular}}) doBeforeUpsertHooks() (err error) {
  for _, hook := range {{$varNameSingular}}BeforeUpsertHooks {
    if err := hook(o); err != nil {
      return err
    }
  }

  return nil
}

// doAfterCreateHooks executes all "after create" hooks.
func (o *{{$tableNameSingular}}) doAfterCreateHooks() (err error) {
  for _, hook := range {{$varNameSingular}}AfterCreateHooks {
    if err := hook(o); err != nil {
      return err
    }
  }

  return nil
}

// doAfterUpdateHooks executes all "after Update" hooks.
func (o *{{$tableNameSingular}}) doAfterUpdateHooks() (err error) {
  for _, hook := range {{$varNameSingular}}AfterUpdateHooks {
    if err := hook(o); err != nil {
      return err
    }
  }

  return nil
}

// doAfterUpsertHooks executes all "after Upsert" hooks.
func (o *{{$tableNameSingular}}) doAfterUpsertHooks() (err error) {
  for _, hook := range {{$varNameSingular}}AfterUpsertHooks {
    if err := hook(o); err != nil {
      return err
    }
  }

  return nil
}

func {{$tableNameSingular}}AddHook(hookPoint boil.HookPoint, {{$varNameSingular}}Hook {{$tableNameSingular}}Hook) {
  switch hookPoint {
    case boil.HookBeforeCreate:
      {{$varNameSingular}}BeforeCreateHooks = append({{$varNameSingular}}BeforeCreateHooks, {{$varNameSingular}}Hook)
    case boil.HookBeforeUpdate:
      {{$varNameSingular}}BeforeUpdateHooks = append({{$varNameSingular}}BeforeUpdateHooks, {{$varNameSingular}}Hook)
    case boil.HookBeforeUpsert:
      {{$varNameSingular}}BeforeUpsertHooks = append({{$varNameSingular}}BeforeUpsertHooks, {{$varNameSingular}}Hook)
    case boil.HookAfterCreate:
      {{$varNameSingular}}AfterCreateHooks = append({{$varNameSingular}}AfterCreateHooks, {{$varNameSingular}}Hook)
    case boil.HookAfterUpdate:
      {{$varNameSingular}}AfterUpdateHooks = append({{$varNameSingular}}AfterUpdateHooks, {{$varNameSingular}}Hook)
    case boil.HookAfterUpsert:
      {{$varNameSingular}}AfterUpsertHooks = append({{$varNameSingular}}AfterUpsertHooks, {{$varNameSingular}}Hook)
  }
}
