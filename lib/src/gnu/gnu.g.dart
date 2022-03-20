// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// GNU C Library
class DynamicGnuCLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DynamicGnuCLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DynamicGnuCLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Int32> errno() {
    return _errno();
  }

  late final _errnoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function()>>(
          '__errno_location');
  late final _errno = _errnoPtr.asFunction<ffi.Pointer<ffi.Int32> Function()>();

  ffi.Pointer<ffi.Int8> strerror(
    int __errnum,
  ) {
    return _strerror(
      __errnum,
    );
  }

  late final _strerrorPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function(ffi.Int32)>>(
          'strerror');
  late final _strerror =
      _strerrorPtr.asFunction<ffi.Pointer<ffi.Int8> Function(int)>();

  int uname(
    ffi.Pointer<utsname_t> __name,
  ) {
    return _uname(
      __name,
    );
  }

  late final _unamePtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<utsname_t>)>>(
          'uname');
  late final _uname =
      _unamePtr.asFunction<int Function(ffi.Pointer<utsname_t>)>();
}

const int UTSNAME_DOMAIN_LENGTH = 65;

const int UTSNAME_LENGTH = 65;

const int UTSNAME_MACHINE_LENGTH = 65;

const int UTSNAME_NODENAME_LENGTH = 65;

const int UTSNAME_RELEASE_LENGTH = 65;

const int UTSNAME_SYSNAME_LENGTH = 65;

const int UTSNAME_VERSION_LENGTH = 65;

class utsname_t extends ffi.Struct {
  @ffi.Array.multi([65])
  external ffi.Array<ffi.Int8> sysname;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Int8> nodename;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Int8> release;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Int8> version;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Int8> machine;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Int8> __domainname;
}
