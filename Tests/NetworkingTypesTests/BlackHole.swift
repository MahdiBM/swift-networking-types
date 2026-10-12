//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2026 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Swift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// Stops the compiler from optimizing the argument away.
@_optimize(none)
func blackHole(_: some Any) {}

/// Returns its argument as-is while ensuring the compiler does not optimize it away.
@_optimize(none)
func noOptimize<T>(_ value: T) -> T {
    value
}
