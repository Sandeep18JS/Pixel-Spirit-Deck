import React, { useRef, useState } from 'react'
import vertexShader from './shaders/vertex.glsl'
import fragmentShader from './shaders/pixelspiritdecks/14hope.glsl'
import * as THREE from 'three'
import { useFrame } from '@react-three/fiber'
import { Edges, OrbitControls, shaderMaterial } from '@react-three/drei'
import { extend } from '@react-three/fiber'

const GradientMaterial = shaderMaterial(
    {
        u_time: 0.0,
    },
    vertexShader,
    fragmentShader
)
extend({ GradientMaterial })

export const Experience = () => {
    const [uTime, setUTime] = useState(0)
    const mesh = useRef()

    useFrame((state) => {
        setUTime(state.clock.elapsedTime)
    })

    return (
        <>
            <OrbitControls />

            <mesh ref={mesh}>
                <planeGeometry args={[8, 8]} />

                <gradientMaterial key={GradientMaterial.key} u_time={uTime} />
                <Edges linewidth={2}

                />
            </mesh>
        </>
    )
}